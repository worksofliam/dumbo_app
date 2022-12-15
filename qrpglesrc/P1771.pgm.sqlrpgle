**free

ctl-opt dftactgrp(*no);

dcl-pi P1771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1139.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds T612 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T612 FROM T612 LIMIT 1;

theCharVar = 'Hello from P1771';
dsply theCharVar;
P1139();
P438();
P418();
return;