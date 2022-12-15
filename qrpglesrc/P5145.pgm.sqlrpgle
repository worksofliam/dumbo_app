**free

ctl-opt dftactgrp(*no);

dcl-pi P5145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P2441.rpgleinc'

dcl-ds theTable extname('T337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T337 LIMIT 1;

theCharVar = 'Hello from P5145';
dsply theCharVar;
P176();
P802();
P2441();
return;