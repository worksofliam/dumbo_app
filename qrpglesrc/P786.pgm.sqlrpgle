**free

ctl-opt dftactgrp(*no);

dcl-pi P786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds T1157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1157 FROM T1157 LIMIT 1;

theCharVar = 'Hello from P786';
dsply theCharVar;
P484();
P302();
P154();
return;