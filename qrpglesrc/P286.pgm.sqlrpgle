**free

ctl-opt dftactgrp(*no);

dcl-pi P286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds T70 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T70 FROM T70 LIMIT 1;

theCharVar = 'Hello from P286';
dsply theCharVar;
P262();
P66();
P126();
return;