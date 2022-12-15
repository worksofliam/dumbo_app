**free

ctl-opt dftactgrp(*no);

dcl-pi P588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds T1435 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1435 FROM T1435 LIMIT 1;

theCharVar = 'Hello from P588';
dsply theCharVar;
P271();
P19();
P164();
return;