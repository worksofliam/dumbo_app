**free

ctl-opt dftactgrp(*no);

dcl-pi P71;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds T30 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T30 FROM T30 LIMIT 1;

theCharVar = 'Hello from P71';
dsply theCharVar;
P46();
P43();
P63();
return;