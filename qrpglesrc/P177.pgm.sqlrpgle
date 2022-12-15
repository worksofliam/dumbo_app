**free

ctl-opt dftactgrp(*no);

dcl-pi P177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds T255 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T255 FROM T255 LIMIT 1;

theCharVar = 'Hello from P177';
dsply theCharVar;
P166();
P160();
P48();
return;