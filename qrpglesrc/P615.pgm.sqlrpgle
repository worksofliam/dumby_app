**free

ctl-opt dftactgrp(*no);

dcl-pi P615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P457.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P615';
dsply theCharVar;
callp localProc();
P457();
P523();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P615 in the procedure';
end-proc;