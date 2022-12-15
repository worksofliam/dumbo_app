**free

ctl-opt dftactgrp(*no);

dcl-pi P2641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P1650.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'

dcl-ds T666 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T666 FROM T666 LIMIT 1;

theCharVar = 'Hello from P2641';
dsply theCharVar;
P32();
P1650();
P606();
return;