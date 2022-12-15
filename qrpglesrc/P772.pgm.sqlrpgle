**free

ctl-opt dftactgrp(*no);

dcl-pi P772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P448.rpgleinc'

dcl-ds T140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T140 FROM T140 LIMIT 1;

theCharVar = 'Hello from P772';
dsply theCharVar;
P475();
P650();
P448();
return;