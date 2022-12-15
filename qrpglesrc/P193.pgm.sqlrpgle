**free

ctl-opt dftactgrp(*no);

dcl-pi P193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds T604 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T604 FROM T604 LIMIT 1;

theCharVar = 'Hello from P193';
dsply theCharVar;
P15();
P152();
P118();
return;