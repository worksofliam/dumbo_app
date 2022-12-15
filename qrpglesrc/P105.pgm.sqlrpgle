**free

ctl-opt dftactgrp(*no);

dcl-pi P105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds T110 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T110 FROM T110 LIMIT 1;

theCharVar = 'Hello from P105';
dsply theCharVar;
P94();
P81();
P75();
return;