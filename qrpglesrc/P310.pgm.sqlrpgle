**free

ctl-opt dftactgrp(*no);

dcl-pi P310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P310';
dsply theCharVar;
P83();
P294();
P107();
return;