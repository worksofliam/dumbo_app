**free

ctl-opt dftactgrp(*no);

dcl-pi P5591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4645.rpgleinc'
/copy 'qrpgleref/P3004.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'

dcl-ds T1407 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1407 FROM T1407 LIMIT 1;

theCharVar = 'Hello from P5591';
dsply theCharVar;
P4645();
P3004();
P421();
return;