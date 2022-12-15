**free

ctl-opt dftactgrp(*no);

dcl-pi P981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds T290 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T290 FROM T290 LIMIT 1;

theCharVar = 'Hello from P981';
dsply theCharVar;
P443();
P814();
P88();
return;