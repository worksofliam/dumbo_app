**free

ctl-opt dftactgrp(*no);

dcl-pi P3225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1042.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'

dcl-ds T365 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T365 FROM T365 LIMIT 1;

theCharVar = 'Hello from P3225';
dsply theCharVar;
P1042();
P365();
P990();
return;