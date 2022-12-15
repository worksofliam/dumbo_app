**free

ctl-opt dftactgrp(*no);

dcl-pi P484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P484';
dsply theCharVar;
P238();
P141();
P199();
return;