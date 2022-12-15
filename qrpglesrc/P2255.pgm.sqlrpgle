**free

ctl-opt dftactgrp(*no);

dcl-pi P2255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P1452.rpgleinc'
/copy 'qrpgleref/P1864.rpgleinc'

dcl-ds T740 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T740 FROM T740 LIMIT 1;

theCharVar = 'Hello from P2255';
dsply theCharVar;
P94();
P1452();
P1864();
return;