**free

ctl-opt dftactgrp(*no);

dcl-pi P2122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P1775.rpgleinc'
/copy 'qrpgleref/P1957.rpgleinc'

dcl-ds theTable extname('T1191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1191 LIMIT 1;

theCharVar = 'Hello from P2122';
dsply theCharVar;
P1901();
P1775();
P1957();
return;