**free

ctl-opt dftactgrp(*no);

dcl-pi P172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds T60 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T60 FROM T60 LIMIT 1;

theCharVar = 'Hello from P172';
dsply theCharVar;
P123();
P60();
P116();
return;