**free

ctl-opt dftactgrp(*no);

dcl-pi P650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds theTable extname('T385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T385 LIMIT 1;

theCharVar = 'Hello from P650';
dsply theCharVar;
P602();
P386();
P223();
return;