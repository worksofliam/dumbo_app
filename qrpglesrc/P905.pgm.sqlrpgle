**free

ctl-opt dftactgrp(*no);

dcl-pi P905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds T1039 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1039 FROM T1039 LIMIT 1;

theCharVar = 'Hello from P905';
dsply theCharVar;
P257();
P14();
P138();
return;