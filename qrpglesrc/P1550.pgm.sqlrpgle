**free

ctl-opt dftactgrp(*no);

dcl-pi P1550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1303.rpgleinc'
/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P1345.rpgleinc'

dcl-ds T150 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T150 FROM T150 LIMIT 1;

theCharVar = 'Hello from P1550';
dsply theCharVar;
P1303();
P1122();
P1345();
return;