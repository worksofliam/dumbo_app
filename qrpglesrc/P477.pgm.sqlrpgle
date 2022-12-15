**free

ctl-opt dftactgrp(*no);

dcl-pi P477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds T1700 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1700 FROM T1700 LIMIT 1;

theCharVar = 'Hello from P477';
dsply theCharVar;
P214();
P328();
P207();
return;