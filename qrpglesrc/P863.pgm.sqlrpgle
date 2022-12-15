**free

ctl-opt dftactgrp(*no);

dcl-pi P863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'

dcl-ds T471 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T471 FROM T471 LIMIT 1;

theCharVar = 'Hello from P863';
dsply theCharVar;
P664();
P42();
P780();
return;