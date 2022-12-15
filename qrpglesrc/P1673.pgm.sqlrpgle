**free

ctl-opt dftactgrp(*no);

dcl-pi P1673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'

dcl-ds theTable extname('T656') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T656 LIMIT 1;

theCharVar = 'Hello from P1673';
dsply theCharVar;
P906();
P1469();
P414();
return;