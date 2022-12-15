**free

ctl-opt dftactgrp(*no);

dcl-pi P814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds T979 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T979 FROM T979 LIMIT 1;

theCharVar = 'Hello from P814';
dsply theCharVar;
P374();
P557();
P765();
return;