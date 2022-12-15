**free

ctl-opt dftactgrp(*no);

dcl-pi P1042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'

dcl-ds T180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T180 FROM T180 LIMIT 1;

theCharVar = 'Hello from P1042';
dsply theCharVar;
P232();
P796();
P449();
return;