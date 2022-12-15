**free

ctl-opt dftactgrp(*no);

dcl-pi P1347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1213.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P1041.rpgleinc'

dcl-ds T141 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T141 FROM T141 LIMIT 1;

theCharVar = 'Hello from P1347';
dsply theCharVar;
P1213();
P68();
P1041();
return;