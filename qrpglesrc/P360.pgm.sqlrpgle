**free

ctl-opt dftactgrp(*no);

dcl-pi P360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds T44 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T44 FROM T44 LIMIT 1;

theCharVar = 'Hello from P360';
dsply theCharVar;
P174();
P124();
P314();
return;