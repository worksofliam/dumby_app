**free

ctl-opt dftactgrp(*no);

dcl-pi P1201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds theTable extname('T315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T315 LIMIT 1;

theCharVar = 'Hello from P1201';
dsply theCharVar;
callp localProc();
P485();
P502();
P248();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1201 in the procedure';
end-proc;