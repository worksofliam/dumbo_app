**free

ctl-opt dftactgrp(*no);

dcl-pi P1761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P1711.rpgleinc'

dcl-ds theTable extname('T694') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T694 LIMIT 1;

theCharVar = 'Hello from P1761';
dsply theCharVar;
P992();
P966();
P1711();
return;