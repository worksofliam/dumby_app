**free

ctl-opt dftactgrp(*no);

dcl-pi P1061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P649.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'

dcl-ds theTable extname('T372') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T372 LIMIT 1;

theCharVar = 'Hello from P1061';
dsply theCharVar;
callp localProc();
P649();
P322();
P304();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1061 in the procedure';
end-proc;