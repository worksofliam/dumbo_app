**free

ctl-opt dftactgrp(*no);

dcl-pi P1698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'

dcl-ds T911 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T911 FROM T911 LIMIT 1;

theCharVar = 'Hello from P1698';
dsply theCharVar;
P632();
P43();
P865();
return;