**free

ctl-opt dftactgrp(*no);

dcl-pi P810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds T710 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T710 FROM T710 LIMIT 1;

theCharVar = 'Hello from P810';
dsply theCharVar;
P705();
P235();
P233();
return;