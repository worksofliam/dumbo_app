**free

ctl-opt dftactgrp(*no);

dcl-pi P1068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'

dcl-ds T1819 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1819 FROM T1819 LIMIT 1;

theCharVar = 'Hello from P1068';
dsply theCharVar;
P895();
P1000();
P449();
return;