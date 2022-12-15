**free

ctl-opt dftactgrp(*no);

dcl-pi P1230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds T484 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T484 FROM T484 LIMIT 1;

theCharVar = 'Hello from P1230';
dsply theCharVar;
P173();
P1162();
P294();
return;