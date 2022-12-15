**free

ctl-opt dftactgrp(*no);

dcl-pi P4482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'
/copy 'qrpgleref/P1618.rpgleinc'

dcl-ds T1368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1368 FROM T1368 LIMIT 1;

theCharVar = 'Hello from P4482';
dsply theCharVar;
P520();
P842();
P1618();
return;