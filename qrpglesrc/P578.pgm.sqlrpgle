**free

ctl-opt dftactgrp(*no);

dcl-pi P578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds T214 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T214 FROM T214 LIMIT 1;

theCharVar = 'Hello from P578';
dsply theCharVar;
P140();
P195();
P141();
return;