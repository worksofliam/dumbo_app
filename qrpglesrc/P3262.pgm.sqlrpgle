**free

ctl-opt dftactgrp(*no);

dcl-pi P3262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1826.rpgleinc'
/copy 'qrpgleref/P2128.rpgleinc'
/copy 'qrpgleref/P1681.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P3262';
dsply theCharVar;
P1826();
P2128();
P1681();
return;