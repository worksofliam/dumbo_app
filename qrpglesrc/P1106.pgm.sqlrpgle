**free

ctl-opt dftactgrp(*no);

dcl-pi P1106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'

dcl-ds T958 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T958 FROM T958 LIMIT 1;

theCharVar = 'Hello from P1106';
dsply theCharVar;
P233();
P650();
P563();
return;