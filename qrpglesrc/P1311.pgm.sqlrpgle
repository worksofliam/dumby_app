**free

ctl-opt dftactgrp(*no);

dcl-pi P1311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'

dcl-ds theTable extname('T453') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T453 LIMIT 1;

theCharVar = 'Hello from P1311';
dsply theCharVar;
P512();
P592();
P966();
return;