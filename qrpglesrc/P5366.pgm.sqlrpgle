**free

ctl-opt dftactgrp(*no);

dcl-pi P5366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5079.rpgleinc'
/copy 'qrpgleref/P1470.rpgleinc'
/copy 'qrpgleref/P1901.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P5366';
dsply theCharVar;
P5079();
P1470();
P1901();
return;