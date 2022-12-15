**free

ctl-opt dftactgrp(*no);

dcl-pi P844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'

dcl-ds T290 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T290 FROM T290 LIMIT 1;

theCharVar = 'Hello from P844';
dsply theCharVar;
P429();
P678();
P670();
return;