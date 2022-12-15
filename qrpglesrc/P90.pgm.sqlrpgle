**free

ctl-opt dftactgrp(*no);

dcl-pi P90;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds T1861 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1861 FROM T1861 LIMIT 1;

theCharVar = 'Hello from P90';
dsply theCharVar;
P45();
P19();
P65();
return;