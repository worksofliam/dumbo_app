**free

ctl-opt dftactgrp(*no);

dcl-pi P67;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T1558 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1558 FROM T1558 LIMIT 1;

theCharVar = 'Hello from P67';
dsply theCharVar;
P36();
P33();
P61();
return;