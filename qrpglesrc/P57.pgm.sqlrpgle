**free

ctl-opt dftactgrp(*no);

dcl-pi P57;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T172 FROM T172 LIMIT 1;

theCharVar = 'Hello from P57';
dsply theCharVar;
P53();
P43();
return;