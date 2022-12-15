**free

ctl-opt dftactgrp(*no);

dcl-pi P639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P639';
dsply theCharVar;
P17();
P83();
P46();
return;