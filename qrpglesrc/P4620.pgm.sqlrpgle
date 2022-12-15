**free

ctl-opt dftactgrp(*no);

dcl-pi P4620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4126.rpgleinc'
/copy 'qrpgleref/P3447.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'

dcl-ds T1193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1193 FROM T1193 LIMIT 1;

theCharVar = 'Hello from P4620';
dsply theCharVar;
P4126();
P3447();
P232();
return;