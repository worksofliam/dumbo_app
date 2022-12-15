**free

ctl-opt dftactgrp(*no);

dcl-pi P1436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P790.rpgleinc'

dcl-ds T75 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T75 FROM T75 LIMIT 1;

theCharVar = 'Hello from P1436';
dsply theCharVar;
P650();
P147();
P790();
return;