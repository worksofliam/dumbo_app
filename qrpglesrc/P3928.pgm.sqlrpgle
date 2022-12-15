**free

ctl-opt dftactgrp(*no);

dcl-pi P3928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1478.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'

dcl-ds T1397 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1397 FROM T1397 LIMIT 1;

theCharVar = 'Hello from P3928';
dsply theCharVar;
P1478();
P868();
P388();
return;