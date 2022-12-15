**free

ctl-opt dftactgrp(*no);

dcl-pi P1026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T1161 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1161 FROM T1161 LIMIT 1;

theCharVar = 'Hello from P1026';
dsply theCharVar;
P153();
P442();
P10();
return;