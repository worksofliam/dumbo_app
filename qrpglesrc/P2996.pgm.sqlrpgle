**free

ctl-opt dftactgrp(*no);

dcl-pi P2996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1007.rpgleinc'
/copy 'qrpgleref/P2179.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds T19 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T19 FROM T19 LIMIT 1;

theCharVar = 'Hello from P2996';
dsply theCharVar;
P1007();
P2179();
P281();
return;