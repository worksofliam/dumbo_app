**free

ctl-opt dftactgrp(*no);

dcl-pi P2083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2072.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P1764.rpgleinc'

dcl-ds T261 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T261 FROM T261 LIMIT 1;

theCharVar = 'Hello from P2083';
dsply theCharVar;
P2072();
P742();
P1764();
return;