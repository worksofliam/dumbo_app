**free

ctl-opt dftactgrp(*no);

dcl-pi P2747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P2309.rpgleinc'
/copy 'qrpgleref/P547.rpgleinc'

dcl-ds T1316 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1316 FROM T1316 LIMIT 1;

theCharVar = 'Hello from P2747';
dsply theCharVar;
P619();
P2309();
P547();
return;