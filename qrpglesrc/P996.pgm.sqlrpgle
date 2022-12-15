**free

ctl-opt dftactgrp(*no);

dcl-pi P996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds T587 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T587 FROM T587 LIMIT 1;

theCharVar = 'Hello from P996';
dsply theCharVar;
P91();
P705();
P314();
return;