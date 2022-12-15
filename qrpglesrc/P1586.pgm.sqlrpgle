**free

ctl-opt dftactgrp(*no);

dcl-pi P1586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'

dcl-ds T203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T203 FROM T203 LIMIT 1;

theCharVar = 'Hello from P1586';
dsply theCharVar;
P143();
P192();
P1461();
return;