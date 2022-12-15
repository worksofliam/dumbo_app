**free

ctl-opt dftactgrp(*no);

dcl-pi P5265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P3087.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'

dcl-ds theTable extname('T342') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T342 LIMIT 1;

theCharVar = 'Hello from P5265';
dsply theCharVar;
callp localProc();
P193();
P3087();
P568();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5265 in the procedure';
end-proc;