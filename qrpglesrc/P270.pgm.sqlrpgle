**free

ctl-opt dftactgrp(*no);

dcl-pi P270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P270';
dsply theCharVar;
P213();
P132();
P118();
return;