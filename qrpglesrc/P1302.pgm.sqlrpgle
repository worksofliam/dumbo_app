**free

ctl-opt dftactgrp(*no);

dcl-pi P1302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P1221.rpgleinc'

dcl-ds theTable extname('T177') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T177 LIMIT 1;

theCharVar = 'Hello from P1302';
dsply theCharVar;
P1264();
P863();
P1221();
return;