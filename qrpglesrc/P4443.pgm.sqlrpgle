**free

ctl-opt dftactgrp(*no);

dcl-pi P4443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3202.rpgleinc'
/copy 'qrpgleref/P1564.rpgleinc'
/copy 'qrpgleref/P3226.rpgleinc'

dcl-ds T1035 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1035 FROM T1035 LIMIT 1;

theCharVar = 'Hello from P4443';
dsply theCharVar;
P3202();
P1564();
P3226();
return;