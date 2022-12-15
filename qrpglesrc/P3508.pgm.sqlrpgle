**free

ctl-opt dftactgrp(*no);

dcl-pi P3508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2900.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P2072.rpgleinc'

dcl-ds T976 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T976 FROM T976 LIMIT 1;

theCharVar = 'Hello from P3508';
dsply theCharVar;
P2900();
P338();
P2072();
return;